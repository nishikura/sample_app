module ApplicationHelper

# ページごとの完全なタイトルを返す
  def full_title(page_title = '')	  # メソッド定義引数
	base_title = "Ruby on Rails Tutorial Sample App"  # 変数の代入とオプション
	if page_title.empty?	# 論理値でテスト
	  base_title			# 暗黙的な返り値
	else
	  page_title + " | " + base_title	  # 文字列の結合
	end
  end
end
