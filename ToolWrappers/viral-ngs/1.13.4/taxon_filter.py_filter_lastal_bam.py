from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, Boolean

Taxon_Filter_Py_Filter_Lastal_Bam_V0_1_0 = CommandToolBuilder(tool="taxon_filter.py_filter_lastal_bam", base_command=["taxon_filter.py", "filter_lastal_bam"], inputs=[ToolInput(tag="in_maximum_gapless_alignments", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="maximum gapless alignments per query position\n(default: 1)")), ToolInput(tag="in_minimum_length_initial", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum length for initial matches (default: 5)")), ToolInput(tag="in_maximum_length_initial", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="maximum length for initial matches (default: 50)")), ToolInput(tag="in_maximum_initial_matches", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="maximum initial matches per query position (default:\n100)")), ToolInput(tag="in_jvm_memory", input_type=Int(optional=True), prefix="--JVMmemory", doc=InputDocumentation(doc="JVM virtual memory size (default: 4g)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input reads")), ToolInput(tag="in_db", input_type=String(), position=1, doc=InputDocumentation(doc="Database of taxa we keep")), ToolInput(tag="in_out_bam", input_type=String(), position=2, doc=InputDocumentation(doc="Output reads, filtered to refDb"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Filter_Py_Filter_Lastal_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

