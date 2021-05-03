from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Directory, Boolean

Illumina_Py_Miseq_Fastq_To_Bam_V0_1_0 = CommandToolBuilder(tool="illumina.py_miseq_fastq_to_bam", base_command=["illumina.py", "miseq_fastq_to_bam"], inputs=[ToolInput(tag="in_in_fast_q_two", input_type=Int(optional=True), prefix="--inFastq2", doc=InputDocumentation(doc="Input fastq file; 2nd end of paired-end reads.")), ToolInput(tag="in_run_info", input_type=File(optional=True), prefix="--runInfo", doc=InputDocumentation(doc="Input RunInfo.xml file.")), ToolInput(tag="in_sequencing_center", input_type=String(optional=True), prefix="--sequencing_center", doc=InputDocumentation(doc="Name of your sequencing center (default is the\nsequencing machine ID from the RunInfo.xml)")), ToolInput(tag="in_jvm_memory", input_type=Int(optional=True), prefix="--JVMmemory", doc=InputDocumentation(doc="JVM virtual memory size (default: 2g)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_out_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Output BAM file.")), ToolInput(tag="in_sample_sheet", input_type=String(), position=1, doc=InputDocumentation(doc="Input SampleSheet.csv file.")), ToolInput(tag="in_in_fast_q_one", input_type=Int(), position=2, doc=InputDocumentation(doc="Input fastq file; 1st end of paired-end reads if")), ToolInput(tag="in_paired_dot", input_type=String(), position=3, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Illumina_Py_Miseq_Fastq_To_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

