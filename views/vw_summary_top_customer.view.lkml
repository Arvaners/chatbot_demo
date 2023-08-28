view: vw_summary_top_customer {
  sql_table_name: `bi-dashboard-dev.chatbot.vw_summary_top_customer` ;;

  dimension: customername {
    type: string
    sql: ${TABLE}.customername ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: totalcustomer {
    type: number
    sql: ${TABLE}.totalcustomer ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [customername]
  }
}
