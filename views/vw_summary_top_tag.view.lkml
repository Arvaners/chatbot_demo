view: vw_summary_top_tag {
  sql_table_name: `bi-dashboard-dev.chatbot.vw_summary_top_tag` ;;

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: tagname {
    type: string
    sql: ${TABLE}.tagname ;;
  }
  dimension: totaltag {
    type: number
    sql: ${TABLE}.totaltag ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [tagname]
  }
}
