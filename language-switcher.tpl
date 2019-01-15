<template id="a-language-switcher">
	
	<div>
		<div class="a-language-switcher" v-if="layout != 'form'" v-auto-close="function () { show = false; }">
			<div class="current-language" @click="show = !show">
				<span class="language">{{ $services.language.current ? $services.language.current.label : '%{language:Taal}' }}</span>
				<span class="fa fa-chevron-down"></span>
			</div>
			<n-language-switcher v-show="show"/>
		</div>
		
		<n-form-section class="a-language-switcher" v-if="layout == 'form'">
			<n-form-combo 
				name="language" 
				label="%{language:Taal}" 
				:value="$services.language.current"
				:items="$services.language.available"
				:formatter="function(language) { return language.label }"
				@input="function(language) { if (language != null) { $services.language.current = language }}"
			></n-form-combo>
		</n-form-section>
	</div>
	
</template>
