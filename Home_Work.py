import random


def main():
    choices = ['Камінь', 'Ножиці', 'Папір']


    player_choice = input("Виберіть Камінь, Ножиці або Папір: ").capitalize()


    if player_choice not in choices:
        print("Будь ласка, виберіть один із варіантів: Камінь, Ножиці або Папір")
        return


    computer_choice = random.choice(choices)


    if player_choice == computer_choice:
        print("Нічия!")
    elif (player_choice == 'Камінь' and computer_choice == 'Ножиці') or \
            (player_choice == 'Ножиці' and computer_choice == 'Папір') or \
            (player_choice == 'Папір' and computer_choice == 'Камінь'):
        print("Ви перемогли!")
    else:
        print("Комп'ютер переміг!")


if __name__ == "__main__":
    main()