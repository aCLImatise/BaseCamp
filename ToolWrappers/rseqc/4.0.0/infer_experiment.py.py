from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Infer_Experiment_Py_V0_1_0 = CommandToolBuilder(tool="infer_experiment.py", base_command=["infer_experiment.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Input alignment file in SAM or BAM format")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed fomat.")), ToolInput(tag="in_sample_size", input_type=Int(optional=True), prefix="--sample-size", doc=InputDocumentation(doc="Number of reads sampled from SAM/BAM file.\ndefault=200000")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be considered as 'uniquely mapped'.\ndefault=30\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Infer_Experiment_Py_V0_1_0().translate("wdl")

