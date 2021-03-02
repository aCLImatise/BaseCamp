from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Django_Admin_Pyc_V0_1_0 = CommandToolBuilder(tool="django_admin.pyc", base_command=["django-admin.pyc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Django_Admin_Pyc_V0_1_0().translate("wdl", allow_empty_container=True)

