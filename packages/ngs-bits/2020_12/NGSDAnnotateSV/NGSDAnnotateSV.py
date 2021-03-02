from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Ngsdannotatesv_V0_1_0 = CommandToolBuilder(tool="NGSDAnnotateSV", base_command=["NGSDAnnotateSV"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="BEDPE file containing structural variants.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BEDPE file containing annotated structural variants.")), ToolInput(tag="in_ps", input_type=String(optional=True), prefix="-ps", doc=InputDocumentation(doc="Processed sample name.")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_ignore_processing_system", input_type=Boolean(optional=True), prefix="-ignore_processing_system", doc=InputDocumentation(doc="Use all SVs for annotation (otherwise only SVs from good samples of the same processing system are used)\nDefault value: 'false'")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="-debug", doc=InputDocumentation(doc="Provide additional information in STDOUT (e.g. query runtime)\nDefault value: 'false'")), ToolInput(tag="in_use_memory", input_type=Boolean(optional=True), prefix="-use_memory", doc=InputDocumentation(doc="Creates the temporary tables in memory.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BEDPE file containing annotated structural variants."))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdannotatesv_V0_1_0().translate("wdl")

