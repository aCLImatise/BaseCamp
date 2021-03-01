from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean, Float

Fpkm_Count_Py_V0_1_0 = CommandToolBuilder(tool="FPKM_count.py", base_command=["FPKM_count.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM format (SAM is not supported).\n[required]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed fomat. [required]")), ToolInput(tag="in_strand", input_type=Int(optional=True), prefix="--strand", doc=InputDocumentation(doc="How read(s) were stranded during sequencing. For\nexample: --strand='1++,1--,2+-,2-+' means that this is\na pair-end, strand-specific RNA-seq, and the strand\nrule is: read1 mapped to '+' => parental gene on '+';\nread1 mapped to '-' => parental gene on '-'; read2\nmapped to '+' => parental gene on '-'; read2 mapped to\n'-' => parental gene on '+'.  If you are not sure\nabout the strand rule, run 'infer_experiment.py'\ndefault=none (Not a strand specific RNA-seq data)")), ToolInput(tag="in_skip_multi_hits", input_type=Boolean(optional=True), prefix="--skip-multi-hits", doc=InputDocumentation(doc="How to deal with multiple hit reads. Presence this\noption renders program to skip multiple hits reads.")), ToolInput(tag="in_only_exonic", input_type=Boolean(optional=True), prefix="--only-exonic", doc=InputDocumentation(doc="How to count total reads. Presence of this option\nrenders program only used exonic (UTR exons and CDS\nexons) reads, otherwise use all reads.")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be called 'uniquely mapped'. default=30")), ToolInput(tag="in_single_read", input_type=Float(optional=True), prefix="--single-read", doc=InputDocumentation(doc="How to count read-pairs that only have one end mapped.\n0: ignore it. 0.5: treat it as half fragment. 1: treat\nit as whole fragment. default=1\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpkm_Count_Py_V0_1_0().translate("wdl", allow_empty_container=True)

