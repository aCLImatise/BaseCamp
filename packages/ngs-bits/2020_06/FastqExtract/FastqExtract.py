from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Fastqextract_V0_1_0 = CommandToolBuilder(tool="FastqExtract", base_command=["FastqExtract"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input FASTQ file (gzipped or plain).")), ToolInput(tag="in_ids", input_type=File(optional=True), prefix="-ids", doc=InputDocumentation(doc="Input TSV file containing IDs (without the '@') in the first column and optional length in the second column.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output FASTQ file.")), ToolInput(tag="in_invert_match_keep", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Invert match: keep non-matching reads.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output FASTQ file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqextract_V0_1_0().translate("wdl", allow_empty_container=True)

