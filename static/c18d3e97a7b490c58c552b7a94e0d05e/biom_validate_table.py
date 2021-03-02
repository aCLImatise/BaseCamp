from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Biom_Validate_Table_V0_1_0 = CommandToolBuilder(tool="biom_validate_table", base_command=["biom", "validate-table"], inputs=[ToolInput(tag="in_input_fp", input_type=File(optional=True), prefix="--input-fp", doc=InputDocumentation(doc="The input filpath to validate against the BIOM\nformat specification  [required]")), ToolInput(tag="in_format_version", input_type=String(optional=True), prefix="--format-version", doc=InputDocumentation(doc="The specific format version to validate against")), ToolInput(tag="in_detailed_report", input_type=Boolean(optional=True), prefix="--detailed-report", doc=InputDocumentation(doc="Include more details in the output report")), ToolInput(tag="in_format_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="Example usage:")), ToolInput(tag="in_specification", input_type=String(), position=0, doc=InputDocumentation(doc="$ biom validate-table -i table.biom"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Validate_Table_V0_1_0().translate("wdl", allow_empty_container=True)

