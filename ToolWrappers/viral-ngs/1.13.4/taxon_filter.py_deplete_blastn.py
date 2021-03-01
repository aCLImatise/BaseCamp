from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, Boolean

Taxon_Filter_Py_Deplete_Blastn_V0_1_0 = CommandToolBuilder(tool="taxon_filter.py_deplete_blastn", base_command=["taxon_filter.py", "deplete_blastn"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="The number of threads to use in running blastn.")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="Input fastq file.")), ToolInput(tag="in_out_fast_q", input_type=String(), position=1, doc=InputDocumentation(doc="Output fastq file with matching reads removed.")), ToolInput(tag="in_ref_dbs", input_type=String(), position=2, doc=InputDocumentation(doc="One or more reference databases for blast."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Filter_Py_Deplete_Blastn_V0_1_0().translate("wdl", allow_empty_container=True)

