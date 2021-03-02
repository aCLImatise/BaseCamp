from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Junction_Annotation_Py_V0_1_0 = CommandToolBuilder(tool="junction_annotation.py", base_command=["junction_annotation.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.")), ToolInput(tag="in_ref_gene", input_type=File(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed format. This file is\nbetter to be a pooled gene model as it will be used to\nannotate splicing junctions [required]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]")), ToolInput(tag="in_min_intron", input_type=Int(optional=True), prefix="--min-intron", doc=InputDocumentation(doc="Minimum intron length (bp). default=50 [optional]")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be considered as 'uniquely mapped'.\ndefault=30\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Junction_Annotation_Py_V0_1_0().translate("wdl")

