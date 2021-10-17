package entitys;

import java.util.Collection;
import java.util.Date;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="USERS")
public class Users {
	@Id @GeneratedValue
	@Column(name="USER_ID")
	private int user_id;
	
	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	private Collection<Pages> page;
	
	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	private Collection<Posts> post;
	
	
	@Column(name="ACCOUNT_TYPE")
	private String account_type;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="USERNAME")
	private String username;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="FIRSTNAME")
	private String firstname;
	
	@Column(name="LASTNAME")
	private String lastname;
	
	@Column(name="SETTINGS")
	private String settings;
	
	@Column(name="PREFERENCES")
	private String preferences;
	
	@Column(name="IS_ACTIVE")
	private boolean is_active;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="MM/dd/yyyy")
	@Column(name="DATE")
	private Date date;
	
	@Column(name="DATA")
	private String data;
	
	@Column(name="BIO")
	private String bio;
	
	@Column(name="AVATAR")
	private String avatar;
	
	@Column(name="PHONE_NUMBER")
	private String phone_number;
	
	@Column(name="VIEWER")
	private int viewer;

	public int getUserId() {
		return user_id;
	}

	public void setUserId(int id) {
		this.user_id = id;
	}
	
	public Collection<Posts> getPost() {
		return post;
	}

	public void setPost(Collection<Posts> post) {
		this.post = post;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getSettings() {
		return settings;
	}

	public void setSettings(String settings) {
		this.settings = settings;
	}


	public Collection<Pages> getPage() {
		return page;
	}

	public void setPage(Collection<Pages> page) {
		this.page = page;
	}

	public String getAccount_type() {
		return account_type;
	}

	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPreferences() {
		return preferences;
	}

	public void setPreferences(String preferences) {
		this.preferences = preferences;
	}

	public boolean isIs_active() {
		return is_active;
	}

	public void setIs_active(boolean is_active) {
		this.is_active = is_active;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public int getViewer() {
		return viewer;
	}

	public void setViewer(int viewer) {
		this.viewer = viewer;
	}
	
	
}
