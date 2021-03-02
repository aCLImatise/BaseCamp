from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Pybel_Compile_V0_1_0 = CommandToolBuilder(tool="pybel_compile", base_command=["pybel", "compile"], inputs=[ToolInput(tag="in_allow_naked_names", input_type=Boolean(optional=True), prefix="--allow-naked-names", doc=InputDocumentation(doc="Enable lenient parsing for naked names")), ToolInput(tag="in_allow_nested", input_type=Boolean(optional=True), prefix="--allow-nested", doc=InputDocumentation(doc="Enable lenient parsing for nested statements")), ToolInput(tag="in_disallow_unqualified_translocations", input_type=Boolean(optional=True), prefix="--disallow-unqualified-translocations", doc=InputDocumentation(doc="Disallow unqualified translocations")), ToolInput(tag="in_no_identifier_validation", input_type=Boolean(optional=True), prefix="--no-identifier-validation", doc=InputDocumentation(doc="Turn off identifier validation")), ToolInput(tag="in_no_citation_clearing", input_type=Boolean(optional=True), prefix="--no-citation-clearing", doc=InputDocumentation(doc="Turn off citation clearing")), ToolInput(tag="in_required_annotations", input_type=String(optional=True), prefix="--required-annotations", doc=InputDocumentation(doc="Specify multiple required annotations")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Compile_V0_1_0().translate("wdl", allow_empty_container=True)

