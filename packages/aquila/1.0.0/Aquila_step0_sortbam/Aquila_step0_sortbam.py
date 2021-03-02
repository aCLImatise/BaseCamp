from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int

Aquila_Step0_Sortbam_V0_1_0 = CommandToolBuilder(tool="Aquila_step0_sortbam", base_command=["Aquila_step0_sortbam"], inputs=[ToolInput(tag="in_bam_file", input_type=File(optional=True), prefix="--bam_file", doc=InputDocumentation(doc="Required parameter, BAM file, called by 'longranger\nalign'")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Directory to store Aquila assembly results, default =\n./Assembly_results")), ToolInput(tag="in_num_threads_for_sam_tools_sort", input_type=Int(optional=True), prefix="--num_threads_for_samtools_sort", doc=InputDocumentation(doc="The number of threads you can define for samtools\nsort, default = 20\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Step0_Sortbam_V0_1_0().translate("wdl", allow_empty_container=True)

