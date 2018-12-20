using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Playlite_db
{
    #region Users
    public class Users
    {
        #region Member Variables
        protected int _user_id;
        protected string _user_first;
        protected string _user_last;
        protected string _user_email;
        protected string _user_uid;
        protected string _user_password;
        protected bool _user_admin;
        #endregion
        #region Constructors
        public Users() { }
        public Users(string user_first, string user_last, string user_email, string user_uid, string user_password, bool user_admin)
        {
            this._user_first=user_first;
            this._user_last=user_last;
            this._user_email=user_email;
            this._user_uid=user_uid;
            this._user_password=user_password;
            this._user_admin=user_admin;
        }
        #endregion
        #region Public Properties
        public virtual int User_id
        {
            get {return _user_id;}
            set {_user_id=value;}
        }
        public virtual string User_first
        {
            get {return _user_first;}
            set {_user_first=value;}
        }
        public virtual string User_last
        {
            get {return _user_last;}
            set {_user_last=value;}
        }
        public virtual string User_email
        {
            get {return _user_email;}
            set {_user_email=value;}
        }
        public virtual string User_uid
        {
            get {return _user_uid;}
            set {_user_uid=value;}
        }
        public virtual string User_password
        {
            get {return _user_password;}
            set {_user_password=value;}
        }
        public virtual bool User_admin
        {
            get {return _user_admin;}
            set {_user_admin=value;}
        }
        #endregion
    }
    #endregion
}