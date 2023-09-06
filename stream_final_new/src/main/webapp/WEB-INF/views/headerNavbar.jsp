<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
	.search-bar {
  width: 300px;
  height: 27px;
  border-radius: 5px;
  /* border: solid 1px rgba(0, 0, 0, 0.3); */
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1;
  opacity: 1;
  margin: 10px;
}
</style>
    
    
	<nav class="navbar navbar-expand navbar-light navbar-bg">
			
		<a class="sidebar-toggle js-sidebar-toggle">
			<i class="hamburger align-self-center"></i>
   		</a>
        
		<div class="navbar-collapse collapse">
			<ul class="navbar-nav navbar-align">
				<li class="nav-item dropdown">
					<a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
						<div class="position-relative">
							<i class="align-middle" data-feather="bell"></i>
							<span class="indicator">4</span>
						</div>
					</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
								<div class="dropdown-menu-header">알림
								</div>
								<div class="search-bar">
									<!-- <i class="fas fa-search" src="img/icons/search.jpg"></i> -->
									<input class ="search-bar" type="search" placeholder="검색" autocomplete="off">
								</div>							
								<div class="list-group">
									<a href="#" class="list-group-item">
										
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">프로젝트명 </div>
												<div class="text-muted small mt-1">ㅁㅁㅁ님의 일정 등록</div>
												<div class="text-muted small mt-1">안녕</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">프로젝트명 </div>
												<div class="text-muted small mt-1">ㅁㅁㅁ님의 일정 등록</div>
												<div class="text-muted small mt-1">안녕</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">프로젝트명 </div>
												<div class="text-muted small mt-1">ㅁㅁㅁ님의 일정 등록</div>
												<div class="text-muted small mt-1">안녕</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">프로젝트명 </div>
												<div class="text-muted small mt-1">ㅁㅁㅁ님의 일정 등록</div>
												<div class="text-muted small mt-1">안녕</div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">더보기</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="message-square"></i>
								</div>
							</a>
							<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="messagesDropdown">
								<div class="dropdown-menu-header">
									<div class="position-relative">
										채팅
									</div>
								</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">김민성1</div>
												<div class="text-muted small mt-1">내용1</div>
												<div class="text-muted small mt-1">시간 전</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="William Harris">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">김민성2</div>
												<div class="text-muted small mt-1">내용1</div>
												<div class="text-muted small mt-1">시간 전</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Christina Mason">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">김민성3</div>
												<div class="text-muted small mt-1">내용1</div>
												<div class="text-muted small mt-1">시간 전</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Sharon Lessman">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">김민성4</div>
												<div class="text-muted small mt-1">내용1</div>
												<div class="text-muted small mt-1">시간 전</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">김민성5</div>
												<div class="text-muted small mt-1">내용1</div>
												<div class="text-muted small mt-1">시간 전</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/user1.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">김민성6</div>
												<div class="text-muted small mt-1">내용1</div>
												<div class="text-muted small mt-1">시간 전</div>
											</div>
										</div>
									</a>
								</div>
						<div class="dropdown-menu-footer">
							<a href="#" class="text-muted">더보기</a>
						</div>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
              <i class="align-middle" data-feather="settings"></i>
            </a>

					<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
              <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span class="text-dark">Charles Hall</span>
            </a>
					<div class="dropdown-menu dropdown-menu-end">
						<a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
						<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i> Analytics</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="index.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
						<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Log out</a>
					</div>
				</li>
			</ul>
		</div>
	</nav>