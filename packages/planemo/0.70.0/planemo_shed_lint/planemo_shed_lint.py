from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Planemo_Shed_Lint_V0_1_0 = CommandToolBuilder(tool="planemo_shed_lint", base_command=["planemo", "shed_lint"], inputs=[ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Recursively perform command for nested\nrepository directories.")), ToolInput(tag="in_fail_fast", input_type=Boolean(optional=True), prefix="--fail_fast", doc=InputDocumentation(doc="If multiple repositories are specified and\nan error occurs stop immediately instead of\nprocessing remaining repositories.")), ToolInput(tag="in_tools", input_type=Boolean(optional=True), prefix="--tools", doc=InputDocumentation(doc="Lint tools discovered in the process of\nlinting repositories.")), ToolInput(tag="in_no_xsd", input_type=Boolean(optional=True), prefix="--no_xsd", doc=InputDocumentation(doc="Include tool XSD validation in linting")), ToolInput(tag="in_urls", input_type=Boolean(optional=True), prefix="--urls", doc=InputDocumentation(doc="Check validity of URLs in XML files")), ToolInput(tag="in_process_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--ensure_metadata               Ensure .shed.yml files contain enough"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Shed_Lint_V0_1_0().translate("wdl", allow_empty_container=True)

