view: summary_ticket {
  sql_table_name: `bi-dashboard-dev.chatbot.summary_ticket` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: agent_id {
    type: number
    sql: ${TABLE}.agent_id ;;
  }
  dimension: agentname {
    type: string
    sql: ${TABLE}.agentname ;;
  }
  dimension: application_rating {
    type: number
    sql: ${TABLE}.application_rating ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: chat_duration {
    type: number
    sql: ${TABLE}.chat_duration ;;
  }
  dimension_group: chat_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.chat_end ;;
  }
  dimension_group: create_at_etl {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_at_etl ;;
  }
  dimension_group: created_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: customername {
    type: string
    sql: ${TABLE}.customername ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: detik {
    type: number
    sql: ${TABLE}.detik ;;
  }
  dimension: hari {
    type: number
    sql: ${TABLE}.hari ;;
  }
  dimension: jam {
    type: number
    sql: ${TABLE}.jam ;;
  }
  dimension: kotakab {
    type: string
    sql: ${TABLE}.kotakab ;;
  }
  dimension: menit {
    type: number
    sql: ${TABLE}.menit ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension_group: modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modified_at ;;
  }
  dimension_group: new_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.new_created_at ;;
  }
  dimension_group: open_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.open_created_at ;;
  }
  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }
  dimension: respon_duration {
    type: number
    sql: ${TABLE}.respon_duration ;;
  }
  dimension: role_id {
    type: number
    sql: ${TABLE}.role_id ;;
  }
  dimension: rolename {
    type: string
    sql: ${TABLE}.rolename ;;
  }
  dimension: service_rating {
    type: number
    sql: ${TABLE}.service_rating ;;
  }
  dimension: sla {
    type: string
    sql: ${TABLE}.sla ;;
  }
  dimension_group: start_duration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_duration ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }
  dimension: tagname {
    type: string
    sql: ${TABLE}.tagname ;;
  }
  dimension: ticket_type {
    type: string
    sql: ${TABLE}.ticket_type ;;
  }
  dimension: topicname {
    type: string
    sql: ${TABLE}.topicname ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  topicname,
  tagname,
  customername,
  rolename,
  agentname
  ]
  }

}
