const { SlashCommandBuilder } = require('discord.js');

module.exports = {
	data: new SlashCommandBuilder().setName('welcome').setDescription('Greets user to the channel!'),
	async execute(interaction) {
		await interaction.reply('Welcome to our channel!');
	},
};