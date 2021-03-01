from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Rna_Fragment_Size_Py_V0_1_0 = CommandToolBuilder(tool="RNA_fragment_size.py", base_command=["RNA_fragment_size.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input BAM file")), ToolInput(tag="in_ref_gene", input_type=File(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in BED format. Must be strandard\n12-column BED file. [required]")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be called 'uniquely mapped'. default=30")), ToolInput(tag="in_frag_num", input_type=Int(optional=True), prefix="--frag-num", doc=InputDocumentation(doc="Minimum number of fragment. default=3\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rna_Fragment_Size_Py_V0_1_0().translate("wdl", allow_empty_container=True)

