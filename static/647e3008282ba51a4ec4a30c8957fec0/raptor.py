from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Raptor_V0_1_0 = CommandToolBuilder(tool="raptor", base_command=["raptor"], inputs=[ToolInput(tag="in_advanced_help", input_type=Boolean(optional=True), prefix="--advanced-help", doc=InputDocumentation(doc="Prints the help page including advanced options.")), ToolInput(tag="in_copyright", input_type=Boolean(optional=True), prefix="--copyright", doc=InputDocumentation(doc="Prints the copyright/license information.")), ToolInput(tag="in_export_help", input_type=Boolean(optional=True), prefix="--export-help", doc=InputDocumentation(doc="(std::string)\nExport the help page information. Value must be one of [html, man].")), ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="(bool)\nWhether to to check for the newest app version. Default: 1."))], outputs=[], container="quay.io/biocontainers/raptor:1.1.0--hb7ba0dd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Raptor_V0_1_0().translate("wdl")

