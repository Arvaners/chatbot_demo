view: aggregate {
  sql_table_name: `bi-dashboard-dev.chatbot.aggregate` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: agentname {
    type: string
    sql: ${TABLE}.agentname ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension_group: created {
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
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension_group: modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modified_at ;;
  }
  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
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
  dimension: ticket_type {
    type: string
    sql: ${TABLE}.ticket_type ;;
  }
  measure: count {
    type: count
    drill_fields: [id, agentname, customername]
  }
}
