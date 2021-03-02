from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Arcashla_Extract_V0_1_0 = CommandToolBuilder(tool="arcasHLA_extract", base_command=["arcasHLA", "extract"], inputs=[ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="log file for run summary\ndefault: sample.extract.log")), ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="paired-end reads\ndefault: False")), ToolInput(tag="in_unmapped", input_type=Boolean(optional=True), prefix="--unmapped", doc=InputDocumentation(doc="include unmapped reads\ndefault: False")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="out directory")), ToolInput(tag="in_temp", input_type=Boolean(optional=True), prefix="--temp", doc=InputDocumentation(doc="temp directory")), ToolInput(tag="in_keep_files", input_type=Boolean(optional=True), prefix="--keep_files", doc=InputDocumentation(doc="keep intermediate files")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="/path/to/sample.bam"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="out directory"))], container="quay.io/biocontainers/arcas-hla:0.2.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arcashla_Extract_V0_1_0().translate("wdl")

