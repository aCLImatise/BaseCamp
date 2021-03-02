from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Censusseq_V0_1_0 = CommandToolBuilder(tool="CensusSeq", base_command=["CensusSeq"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_bam_dot", input_type=String(), position=0, doc=InputDocumentation(doc="This file can be used as the VCF input file on subsequent runs of the same data set")), ToolInput(tag="in_null_dot", input_type=String(), position=0, doc=InputDocumentation(doc="SNP_COVERAGE_HISTOGRAM=File   Output a coverage report for the number of reads on each SNP.  Bins SNPs by the number of")), ToolInput(tag="in_reads_dot", input_type=String(), position=1, doc=InputDocumentation(doc="Default value: null. ")), ToolInput(tag="in_chromosomes_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: [X, Y, MT]. This option can be set to 'null' to clear the"))], outputs=[], container="quay.io/biocontainers/dropseq_tools:2.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Censusseq_V0_1_0().translate("wdl")

