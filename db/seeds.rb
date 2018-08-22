3.times do |topic|
	Topic.create!(
		title: "Topic no: #{topic}"
		)
end
puts  "3 Topics are created"
10.times do |blog|
	Blog.create!(
		title: "My blog posts #{blog +1}",
		body: "my blog post body #{blog}",
		topic_id: Topic.last.id
	)
end
puts  "10 blogs are creates"
5.times do |skill|
	Skill.create!(
		title: "My skills #{skill +1}",
		percent_utilized: 50 + skill
	)
end
puts  "5 skills are creates"
8.times do |port|
	Portfolio.create!(
		title: "My skills #{port +1}",
		subtitle: "Ruby on Rails",
		body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end
1.times do |port|
	Portfolio.create!(
		title: "My skills #{port +1}",
		subtitle: "Angular",
		body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end
puts  "9 Portfolio are created"
