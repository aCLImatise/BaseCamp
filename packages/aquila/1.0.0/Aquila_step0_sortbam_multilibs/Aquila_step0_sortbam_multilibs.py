from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String

Aquila_Step0_Sortbam_Multilibs_V0_1_0 = CommandToolBuilder(tool="Aquila_step0_sortbam_multilibs", base_command=["Aquila_step0_sortbam_multilibs"], inputs=[ToolInput(tag="in_bam_file_list", input_type=File(optional=True), prefix="--bam_file_list", doc=InputDocumentation(doc="Required Parameter, BAM file list, each BAM file is\nseperately by comma ','. For example: 1.bam,2.bam")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Directory to store Aquila assembly results, default\n=./Assembly_results")), ToolInput(tag="in_required_parameter_sample", input_type=Int(optional=True), prefix="--sample_name_list", doc=InputDocumentation(doc="Required Parameter, The sample names list, each sample\nname is seperately by comma ','. For example:\nS24385_lysis_2,S24385_lysis_2H")), ToolInput(tag="in_num_threads_for_sam_tools_sort", input_type=Int(optional=True), prefix="--num_threads_for_samtools_sort", doc=InputDocumentation(doc="The number of threads you can define for samtools\nsort, default = 20\n")), ToolInput(tag="in_var_4", input_type=String(), position=0, doc=InputDocumentation(doc="[--num_threads_for_samtools_sort NUM_THREADS_FOR_SAMTOOLS_SORT]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Step0_Sortbam_Multilibs_V0_1_0().translate("wdl", allow_empty_container=True)

