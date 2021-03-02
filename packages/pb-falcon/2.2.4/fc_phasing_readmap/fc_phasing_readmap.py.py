from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Fc_Phasing_Readmap_Py_V0_1_0 = CommandToolBuilder(tool="fc_phasing_readmap.py", base_command=["fc_phasing_readmap.py"], inputs=[ToolInput(tag="in_phased_reads", input_type=File(optional=True), prefix="--phased-reads", doc=InputDocumentation(doc="path to read vs. phase map (default: None)")), ToolInput(tag="in_raw_read_ids_fn", input_type=Int(optional=True), prefix="--rawread-ids-fn", doc=InputDocumentation(doc="Input. Typically\n3-unzip/reads/dump_rawread_ids/rawreads_ids (default:\nNone)")), ToolInput(tag="in_p_read_ids_fn", input_type=Int(optional=True), prefix="--pread-ids-fn", doc=InputDocumentation(doc="Input. Typically\n3-unzip/reads/dump_rawread_ids/rawreads_ids (default:\nNone)")), ToolInput(tag="in_p_read_to_contigs_fn", input_type=Int(optional=True), prefix="--pread-to-contigs-fn", doc=InputDocumentation(doc="Input. Typically 3-unzip/reads/pread_to_contigs\n(default: None)")), ToolInput(tag="in_the_ctg_id", input_type=File(optional=True), prefix="--the-ctg-id", doc=InputDocumentation(doc="contig identifier in the bam file (default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Phasing_Readmap_Py_V0_1_0().translate("wdl", allow_empty_container=True)

