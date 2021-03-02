from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Protxml_To_Psql_Rb_V0_1_0 = CommandToolBuilder(tool="protxml_to_psql.rb", base_command=["protxml_to_psql.rb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protxml_To_Psql_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

