from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Cuffmerge_V0_1_0 = CommandToolBuilder(tool="cuffmerge", base_command=["cuffmerge"], inputs=[ToolInput(tag="in_outputdir_directory_written", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="<output_dir>     Directory where merged assembly will be written  [ default: ./merged_asm  ]")), ToolInput(tag="in_ref_gtf", input_type=Boolean(optional=True), prefix="--ref-gtf", doc=InputDocumentation(doc="An optional 'reference' annotation GTF.")), ToolInput(tag="in_ref_sequence", input_type=Boolean(optional=True), prefix="--ref-sequence", doc=InputDocumentation(doc="<seq_dir>/<seq_fasta> Genomic DNA sequences for the reference.")), ToolInput(tag="in_min_isoform_fraction", input_type=Int(optional=True), prefix="--min-isoform-fraction", doc=InputDocumentation(doc="Discard isoforms with abundance below this       [ default:           0.05 ]")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="<int>            Use this many threads to merge assemblies.       [ default:             1  ]")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep-tmp", doc=InputDocumentation(doc="Keep all intermediate files during merge"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cuffmerge_V0_1_0().translate("wdl", allow_empty_container=True)

