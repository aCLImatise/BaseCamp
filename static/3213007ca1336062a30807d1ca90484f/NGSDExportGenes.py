from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ngsdexportgenes_V0_1_0 = CommandToolBuilder(tool="NGSDExportGenes", base_command=["NGSDExportGenes"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output TSV file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_hpo", input_type=Boolean(optional=True), prefix="-hpo", doc=InputDocumentation(doc="Annotate with HPO terms (slow).\nDefault value: 'false'")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdexportgenes_V0_1_0().translate("wdl")

