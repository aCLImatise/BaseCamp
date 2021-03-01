from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Iu_Subsample_Fastq_V0_1_0 = CommandToolBuilder(tool="iu_subsample_fastq", base_command=["iu-subsample-fastq"], inputs=[ToolInput(tag="in_r_one", input_type=File(optional=True), prefix="--r1", doc=InputDocumentation(doc="FASTQ file to be subsampled. If you are subsampling a\nmerged FASTQ or you don't have reverse reads, provide\nthe filepath here and do not supply an argument for\n--r2. If you have forward and reverse reads, supply\nthe filepaths as the arguments for --r1 and --r2,\nrespectively.")), ToolInput(tag="in_r_two", input_type=File(optional=True), prefix="--r2", doc=InputDocumentation(doc="FASTQ file for the reverse reads. Should be provided\nonly if you are subsampling forward and reverse reads.")), ToolInput(tag="in_output_one", input_type=File(optional=True), prefix="--output1", doc=InputDocumentation(doc="The output filepath for the forward read. By default,\nthe suffix '_{n}randomreads' is appended to the input\nfilename")), ToolInput(tag="in_output_two", input_type=File(optional=True), prefix="--output2", doc=InputDocumentation(doc="The output filepath for the reverse read. By default,\nthe suffix '_{n}randomreads' is appended to the input\nfilename, where {n} is the argument of --num-reads. If\nyou do not provide an argument for --r2 do not provide\nan argument for --output2.")), ToolInput(tag="in_num_reads", input_type=Int(optional=True), prefix="--num-reads", doc=InputDocumentation(doc="Number of FASTQ entries to randomly sample\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Subsample_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

