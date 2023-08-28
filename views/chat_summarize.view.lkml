view: chat_summarize {
  sql_table_name: `bi-dashboard-dev.chatbot.chat_summarize` ;;

  dimension: a_token {
    type: number
    sql: ${TABLE}.a_token ;;
  }
  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }
  dimension: conversation_id {
    type: string
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
  measure: count {
    type: count
  }
}
