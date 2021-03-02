from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Qualityscores_V0_1_0 = CommandToolBuilder(tool="qualityScores", base_command=["qualityScores"], inputs=[ToolInput(tag="in_name_including_data", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Name of input file including read data. The default format is")), ToolInput(tag="in_gz_fast_q_input", input_type=File(optional=True), prefix="--gzFASTQinput", doc=InputDocumentation(doc="file is in gzipped Fastq format.")), ToolInput(tag="in_bam_input", input_type=Boolean(optional=True), prefix="--BAMinput", doc=InputDocumentation(doc="Input file is in BAM format.")), ToolInput(tag="in_sam_input", input_type=Boolean(optional=True), prefix="--SAMinput", doc=InputDocumentation(doc="Input file is in SAM format.")), ToolInput(tag="in_first_end", input_type=Boolean(optional=True), prefix="--first-end", doc=InputDocumentation(doc="Use only first reads in paired-end data. Only applicable for\npaired-end BAM/SAM input.")), ToolInput(tag="in_second_end", input_type=Boolean(optional=True), prefix="--second-end", doc=InputDocumentation(doc="Use only second reads in paired-end data. Only applicable for\npaired-end BAM/SAM input.")), ToolInput(tag="in_counted_reads", input_type=Int(optional=True), prefix="--counted-reads", doc=InputDocumentation(doc="Total number of reads to be extracted from the input\nfile. 10,000 by default.")), ToolInput(tag="in_phred_offset", input_type=Int(optional=True), prefix="--phred-offset", doc=InputDocumentation(doc="refer to subread aligner.")), ToolInput(tag="in_fast_q_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-o <string>  Name of output file that is a text file including Phred scores"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qualityscores_V0_1_0().translate("wdl", allow_empty_container=True)

