from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Svtools_Lsort_V0_1_0 = CommandToolBuilder(tool="svtools_lsort", base_command=["svtools", "lsort"], inputs=[ToolInput(tag="in_vcf_list", input_type=File(optional=True), prefix="--vcf-list", doc=InputDocumentation(doc="file containing a line-delimited list of VCF files to\ncombine and sort")), ToolInput(tag="in_include_reference", input_type=Boolean(optional=True), prefix="--include-reference", doc=InputDocumentation(doc="whether or not to include homozygous reference or\nmissing calls in the output.")), ToolInput(tag="in_tempdir", input_type=File(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="temporary directory")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batchsize", doc=InputDocumentation(doc="number of files to sort in batch"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtools_Lsort_V0_1_0().translate("wdl", allow_empty_container=True)

