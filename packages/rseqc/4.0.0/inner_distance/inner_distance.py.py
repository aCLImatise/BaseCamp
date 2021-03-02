from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Inner_Distance_Py_V0_1_0 = CommandToolBuilder(tool="inner_distance.py", base_command=["inner_distance.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s)")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in BED format.")), ToolInput(tag="in_sample_size", input_type=Int(optional=True), prefix="--sample-size", doc=InputDocumentation(doc="Number of read-pairs used to estimate inner distance.\ndefault=1000000")), ToolInput(tag="in_lower_bound", input_type=Int(optional=True), prefix="--lower-bound", doc=InputDocumentation(doc="Lower bound of inner distance (bp). This option is\nused for ploting histograme. default=-250")), ToolInput(tag="in_upper_bound", input_type=Int(optional=True), prefix="--upper-bound", doc=InputDocumentation(doc="Upper bound of inner distance (bp). This option is\nused for plotting histogram. default=250")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="--step", doc=InputDocumentation(doc="Step size (bp) of histograme. This option is used for\nplotting histogram. default=5")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be called 'uniquely mapped'. default=30\n")), ToolInput(tag="in_read_one", input_type=Int(), position=0, doc=InputDocumentation(doc="insert_size     read_2"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Inner_Distance_Py_V0_1_0().translate("wdl")

