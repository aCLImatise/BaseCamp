from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nosetests_2_7_V0_1_0 = CommandToolBuilder(tool="nosetests_2.7", base_command=["nosetests-2.7"], inputs=[ToolInput(tag="in_at_call_aside", input_type=String(), position=0, doc=InputDocumentation(doc="File '/usr/local/lib/python2.7/site-packages/pkg_resources/__init__.py', line 3079, in _call_aside"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nosetests_2_7_V0_1_0().translate("wdl", allow_empty_container=True)

