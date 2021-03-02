from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Int

Rgt_Hint_Estimation_V0_1_0 = CommandToolBuilder(tool="rgt_hint_estimation", base_command=["rgt-hint", "estimation"], inputs=[ToolInput(tag="in_organism", input_type=Directory(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism considered on the analysis. Must have been\nsetup in the RGTDATA folder. Common choices are hg19,\nhg38. mm9, and mm10. DEFAULT: hg19")), ToolInput(tag="in_bias_type", input_type=String(optional=True), prefix="--bias-type", doc=InputDocumentation(doc="The methods that used to estimate the bias table\nAvailable options are: 'KMER', 'PWM' and 'VOM'.\nDEFAULT: VOM")), ToolInput(tag="in_reads_file", input_type=File(optional=True), prefix="--reads-file", doc=InputDocumentation(doc="The BAM file containing aligned reads. DEFAULT: None")), ToolInput(tag="in_regions_file", input_type=File(optional=True), prefix="--regions-file", doc=InputDocumentation(doc="The BED file containing regions to estimate the bias.\nDEFAULT: None")), ToolInput(tag="in_downstream_ext", input_type=Int(optional=True), prefix="--downstream-ext", doc=InputDocumentation(doc="Size of k-mer for bias estimation. DEFAULT: 8")), ToolInput(tag="in_output_location", input_type=File(optional=True), prefix="--output-location", doc=InputDocumentation(doc="Path where the output bias table files will be\nwritten. DEFAULT: current directory")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="The prefix for results files. DEFAULT: Bias\n"))], outputs=[ToolOutput(tag="out_output_location", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_location", type_hint=File()), doc=OutputDocumentation(doc="Path where the output bias table files will be\nwritten. DEFAULT: current directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Hint_Estimation_V0_1_0().translate("wdl", allow_empty_container=True)

