from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, Boolean

Metawrap_Read_Qc_V0_1_0 = CommandToolBuilder(tool="metaWRAP_read_qc", base_command=["metaWRAP", "read_qc"], inputs=[ToolInput(tag="in_forward_fastq_reads", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="forward fastq reads")), ToolInput(tag="in_reverse_fastq_reads", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="reverse fastq reads")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads (default=1)")), ToolInput(tag="in_prefix_host_index", input_type=Directory(optional=True), prefix="-x", doc=InputDocumentation(doc="prefix of host index in bmtagger database folder (default=hg38)")), ToolInput(tag="in_skip_bm_tagger", input_type=Boolean(optional=True), prefix="--skip-bmtagger", doc=InputDocumentation(doc="dont remove human sequences with bmtagger")), ToolInput(tag="in_skip_trimming", input_type=Boolean(optional=True), prefix="--skip-trimming", doc=InputDocumentation(doc="dont trim sequences with trimgalore")), ToolInput(tag="in_skip_pre_qc_report", input_type=Boolean(optional=True), prefix="--skip-pre-qc-report", doc=InputDocumentation(doc="dont make FastQC report of input sequences")), ToolInput(tag="in_skip_post_qc_report", input_type=Boolean(optional=True), prefix="--skip-post-qc-report", doc=InputDocumentation(doc="dont make FastQC report of final sequences"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawrap_Read_Qc_V0_1_0().translate("wdl", allow_empty_container=True)

