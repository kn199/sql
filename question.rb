def get_problems
  array = []

  input(array, 'capacity:20未満なら少人数, 20以上なら大人数で表示 ', "select title, capacity, case when 20 < capacity then '少人数' when 20 >= capacity then '大人数' end from events;")
  input(array, 'user_idを重複なしで取得', 'select distinct user_id from events;')
  input(array, 'capacity平均のレコードをグループ化して表示', 'select avg(capacity) from events;')
  input(array, 'capacityが1から200のtitleを表示', 'select title from events where capacity between 1 and 200;')
  input(array, 'user_idとis_acceptingをグループ化して集計', 'select user_id, is_accepting from events group by user_id, is_accepting;')
  input(array, '以下レコードのtitle出力 user_idが10のレコードのいずれかのcapacityより大きいcapacityを持つレコード', 'select title from events where capacity > any (select capacity from events where user_id = 10);')
  input(array, '以下レコードのtitle出力 user_idが10のレコードの全てのcapacityより大きいcapacityを持つレコード', 'select title from events where capacity > all (select capacity from events where user_id = 10);')
  input(array, 'userのidとeventのuser_idで結合しtitle, user_id 表示(user_id無しなら検索しない)', 'select title, user_id from events inner join users on users.id = events.user_id;')
  input(array, 'eventのuser_idで結合しtitle, user_id 表示(user_id無しでも検索 eventsとusersで結合し、eventsのuser_idに存在するレコードのみ表示)', 'select * from events left outer join users on events.user_id = users.id;')
  input(array, 'eventのuser_idで結合しtitle, user_id 表示(user_id無しでも検索 eventsとusersで結合し、usersのidに存在するuser_idのレコードのみ表示)', 'select * from events right outer join users on events.user_id = users.id;')
  input(array, 'idの最大値を取得', 'select max(id) from events;')
  input(array, 'idの最小値を取得', 'select min(id) from events;')
  input(array, 'idのみを降順に取得', 'select id from events order by id desc;')
  input(array, 'idのみを昇順に取得', 'select id from events order by id asc;')
  input(array, 'eventsのレコード件数を表示', 'select count(*) from events;')
  input(array, 'user_idが1か2のtitleを10件まで表示', 'select title from events where user_id in(1,2) limit 10;')
  input(array, 'user_idが1か2ではないtitleを表示', 'select title from events where user_id not in(1,2);')
  input(array, 'user_idごとの一覧を表示', 'select user_id, count(user_id) from events group by user_id;')
  input(array, 'user_idにユーザIDと名前をつけて表示', "select user_id as 'ユーザID' from events;")
  input(array, 'user_idが10のcapacity, titleを表示', 'select capacity, title from events where user_id = 10;')
  input(array, 'タイトルで始まり、後ろに一文字以上ついているtitleを表示', "select title from events where title like 'タイトル%';")
  input(array, 'id=10のeventレコードを削除', 'delete from events where id = 10;')
  input(array, 'id=11のeventレコードのtitleとdescriptionをhogeに更新', "update events set title='hoge', description='hoge' where id = 10;")
  input(array, 'userとeventの組み合わせ全てを結合する', 'select * from events cross join users;')
  input(array, '重複を含めないでevent.idとusers.id結合', 'select id from events union select id from users;')
  input(array, 'titleがnullのレコードのtitleを表示', 'select title from events where title is null;')
  input(array, 'titleがnullでないレコードのtitleを表示', 'select title from events where title is not null;')

  array
end

private

def input(array, question, answer)
  array << {'q' => question, 'a' => answer}
end
