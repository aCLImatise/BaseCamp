from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Vcf2Model_V0_1_0 = CommandToolBuilder(tool="vcf2model", base_command=["vcf2model"], inputs=[ToolInput(tag="in_man", input_type=String(optional=True), prefix="-man", doc=InputDocumentation(doc="Print more detailed help message. Example: -m.")), ToolInput(tag="in_version", input_type=String(optional=True), prefix="-version", doc=InputDocumentation(doc="Print version information. Example: -v.")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="-vcf", doc=InputDocumentation(doc="Specify the input variant calling file (in vcf or vcf.gz\nformat). Example: -vcf input.vcf(.gz).")), ToolInput(tag="in_excluded_chr_list", input_type=String(optional=True), prefix="-excluded_chr_list", doc=InputDocumentation(doc="Specify the chromosome(s) to be excluded for variant profiling.\nExample: -excluded_chr_list excluded_chr_list.txt. Default = ''.")), ToolInput(tag="in_qual", input_type=Int(optional=True), prefix="-qual", doc=InputDocumentation(doc="Specify the cutoff of the minimal variant quality to be\nconsidered. Example: -qual 30. Default = 0.")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="-prefix", doc=InputDocumentation(doc="Specify the file name prefix for the output files. Example:\n-prefix test_prefix. Default = 'output_prefix'.\n"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Specify the file name prefix for the output files. Example:\n-prefix test_prefix. Default = 'output_prefix'.\n"))], container="quay.io/biocontainers/simug:1.0.0--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Model_V0_1_0().translate("wdl")

