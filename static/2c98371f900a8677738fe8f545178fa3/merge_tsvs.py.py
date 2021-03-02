from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Merge_Tsvs_Py_V0_1_0 = CommandToolBuilder(tool="merge_tsvs.py", base_command=["merge_tsvs.py"], inputs=[ToolInput(tag="in_join_type_outer", input_type=String(optional=True), prefix="-j", doc=InputDocumentation(doc="Join type (outer).")), ToolInput(tag="in_join_field_read", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Join on this field (Read).")), ToolInput(tag="in_output_tsv_mergetsvstsv", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output tsv (merge_tsvs.tsv).")), ToolInput(tag="in_fill_na_values", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="Fill NA values with zero.")), ToolInput(tag="in_input_t_svs", input_type=String(), position=0, doc=InputDocumentation(doc="Input tab separated files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Tsvs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

