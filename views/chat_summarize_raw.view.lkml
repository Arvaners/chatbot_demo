view: chat_summarize_raw {
  sql_table_name: `bi-dashboard-dev.chatbot.chat_summarize_raw` ;;

  dimension: a_token {
    type: number
    sql: ${TABLE}.a_token ;;
  }
  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }
  dimension: conversation_id {
    type: number
    sql: ${TABLE}.conversation_id ;;
  }
  dimension: q_token {
    type: number
    sql: ${TABLE}.q_token ;;
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
