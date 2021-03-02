from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_Kmers_V0_1_0 = CommandToolBuilder(tool="falconc_kmers", base_command=["falconc", "kmers"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__intdummy_int", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="=, --int-dummy=     int     42       set int_dummy")), ToolInput(tag="in_stringdummy_string_set", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="=, --string-dummy=  string  'hello'  set string_dummy"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Kmers_V0_1_0().translate("wdl", allow_empty_container=True)

