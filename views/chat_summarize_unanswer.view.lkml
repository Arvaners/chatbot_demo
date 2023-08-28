view: chat_summarize_unanswer {
  sql_table_name: `bi-dashboard-dev.chatbot.chat_summarize_unanswer` ;;

  dimension: conversation_id {
    type: number
    sql: ${TABLE}.conversation_id ;;
  }
  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }
  dimension: verified {
    type: number
    sql: ${TABLE}.verified ;;
  }
  measure: count {
    type: count
  }
}
