from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dnase_Bias_Estimator_Py_V0_1_0 = CommandToolBuilder(tool="dnase_bias_estimator.py", base_command=["dnase_bias_estimator.py"], inputs=[ToolInput(tag="in_calculates_mer_bias", input_type=String(), position=0, doc=InputDocumentation(doc="Calculates the 6-mer 5' insertion bias for a NGS dataset")), ToolInput(tag="in_regions", input_type=String(), position=0, doc=InputDocumentation(doc="BED file of the regions you want to exclude from\ncalculating the bias. This is usually the DHSs.")), ToolInput(tag="in_reads", input_type=String(), position=1, doc=InputDocumentation(doc="The sorted, indexed BAM file containing the DNase-seq data")), ToolInput(tag="in_genome_sequence", input_type=String(), position=2, doc=InputDocumentation(doc="The sorted, indexed FASTA file containing the genome")), ToolInput(tag="in_sequence", input_type=String(), position=3, doc=InputDocumentation(doc="genome_size      The .chrom.sizes file containing chromosome sizes generated")), ToolInput(tag="in_output_file_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="output file prefix to write the observed/expected ratios to\n(will append .txt and .pickle)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnase_Bias_Estimator_Py_V0_1_0().translate("wdl", allow_empty_container=True)

