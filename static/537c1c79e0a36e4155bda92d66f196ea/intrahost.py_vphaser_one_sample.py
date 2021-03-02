from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Intrahost_Py_Vphaser_One_Sample_V0_1_0 = CommandToolBuilder(tool="intrahost.py_vphaser_one_sample", base_command=["intrahost.py", "vphaser_one_sample"], inputs=[ToolInput(tag="in_v_phaser_num_threads", input_type=Int(optional=True), prefix="--vphaserNumThreads", doc=InputDocumentation(doc="Number of threads in call to V-Phaser 2.")), ToolInput(tag="in_min_reads_each", input_type=Int(optional=True), prefix="--minReadsEach", doc=InputDocumentation(doc="Minimum number of reads on each strand (default: 5).")), ToolInput(tag="in_max_bias", input_type=Int(optional=True), prefix="--maxBias", doc=InputDocumentation(doc="Maximum allowable ratio of number of reads on the two\nstrands (default: 10). Ignored if minReadsEach = 0.")), ToolInput(tag="in_remove_doubly_mapped_reads", input_type=Boolean(optional=True), prefix="--removeDoublyMappedReads", doc=InputDocumentation(doc="When calling V-Phaser, remove reads mapping to more\nthan one contig. Default is to keep the reads.")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input Bam file.")), ToolInput(tag="in_in_cons_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Consensus assembly fasta.")), ToolInput(tag="in_out_tab", input_type=String(), position=2, doc=InputDocumentation(doc="Tab-separated headerless output file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intrahost_Py_Vphaser_One_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

