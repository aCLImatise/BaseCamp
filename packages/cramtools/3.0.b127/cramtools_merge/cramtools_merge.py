from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Cramtools_Merge_V0_1_0 = CommandToolBuilder(tool="cramtools_merge", base_command=["cramtools", "merge"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Path to the output BAM file. Omit for stdout.")), ToolInput(tag="in_reference_fast_a_file", input_type=Boolean(optional=True), prefix="--reference-fasta-file", doc=InputDocumentation(doc="Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example).")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="Alignment slice specification, for example: chr1:65000-100000.")), ToolInput(tag="in_sam_format", input_type=Boolean(optional=True), prefix="--sam-format", doc=InputDocumentation(doc="Output in SAM rather than BAM format. (default: false)")), ToolInput(tag="in_sam_header", input_type=File(optional=True), prefix="--sam-header", doc=InputDocumentation(doc="Print SAM file header when output format is text SAM. (default: false)")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)")), ToolInput(tag="in_validation_level", input_type=Boolean(optional=True), prefix="--validation-level", doc=InputDocumentation(doc="Change validation stringency level: STRICT, LENIENT, SILENT. (default: STRICT)")), ToolInput(tag="in_main_class", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to the output BAM file. Omit for stdout.")), ToolOutput(tag="out_sam_header", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sam_header", type_hint=File()), doc=OutputDocumentation(doc="Print SAM file header when output format is text SAM. (default: false)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cramtools_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

