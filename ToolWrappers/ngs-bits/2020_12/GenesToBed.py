from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Genestobed_V0_1_0 = CommandToolBuilder(tool="GenesToBed", base_command=["GenesToBed"], inputs=[ToolInput(tag="in_source", input_type=String(optional=True), prefix="-source", doc=InputDocumentation(doc="Transcript source database.\nValid: 'ccds,ensembl'")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="-mode", doc=InputDocumentation(doc="Mode: gene = start/end of all transcripts, exon = start/end of all exons of all transcripts.\nValid: 'gene,exon'")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input TXT file with one gene symbol per line. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_fall_back", input_type=Boolean(optional=True), prefix="-fallback", doc=InputDocumentation(doc="Allow fallback to all source databases, if no transcript for a gene is defined in the selected source database.\nDefault value: 'false'")), ToolInput(tag="in_an_no", input_type=Boolean(optional=True), prefix="-anno", doc=InputDocumentation(doc="Annotate transcript identifier in addition to gene name.\nDefault value: 'false'")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genestobed_V0_1_0().translate("wdl")

