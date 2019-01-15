Vue.view("a-language-switcher", {
	data: function () {
		return {
			show: false
		}
	},
	props: {
		layout: {
			type: String,
			default: "flat"
		}
	}
})
