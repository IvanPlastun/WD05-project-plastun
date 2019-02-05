<div class="header-admin">
    <div class="header-admin__left">
        <div class="user ml-20">
            <a class="avatar-link" href="<?=HOST?>profile" title='Профиль пользователя'>
                <div class="avatar avatar--small">
                    <?php if($_SESSION['logged_user']['avatar_small'] != "" && file_exists(ROOT . 'usercontent/avatar/' . $_SESSION['logged_user']['avatar_small'])) { ?>
                        <img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['lastname']?>"/>
                    <?php } else { ?>
                        <img src="<?=HOST?>templates/assets/img/avatars/user.png?>" alt="<?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['lastname']?>"/>
                    <?php } ?>
                </div>
            </a>
            <div class="brif ml-20">
                <p class="brif__name"><?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['lastname']?></p><span class="badge">Администратор</span>
            </div>
        </div>
        <nav class="admin-nav ml-70">
            <a href="<?=HOST?>blog/post-new"><i class="fas fa-plus-circle"></i>Пост</a>
            <a href="<?=HOST?>blog/categories"><i class="fas fa-folder"></i>Категории</a>
            <a href="<?=HOST?>portfolio-new"><i class="fas fa-plus-circle"></i>Работа</a>
            <a href="<?=HOST?>about"><i class="fas fa-edit"></i>Обо мне</a>
            <a href="<?=HOST?>contacts-edit"><i class="fas fa-edit"></i>Контакты</a>
            <a href="<?=HOST?>contacts-messages"><i class="fas fa-envelope"></i>Сообщения</a>
        </nav>
    </div>
    <div class="header-admin__right"><a href="<?=HOST?>logout"><i class="fas fa-sign-out-alt"></i>Выход</a></div>
</div>