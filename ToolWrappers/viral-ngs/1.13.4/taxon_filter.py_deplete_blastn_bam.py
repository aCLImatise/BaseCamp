from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, Boolean

Taxon_Filter_Py_Deplete_Blastn_Bam_V0_1_0 = CommandToolBuilder(tool="taxon_filter.py_deplete_blastn_bam", base_command=["taxon_filter.py", "deplete_blastn_bam"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="The number of threads to use in running blastn.")), ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunkSize", doc=InputDocumentation(doc="FASTA chunk size (default: 1000000)")), ToolInput(tag="in_jvm_memory", input_type=Int(optional=True), prefix="--JVMmemory", doc=InputDocumentation(doc="JVM virtual memory size (default: 4g)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_use_blastn_remove", input_type=String(), position=0, doc=InputDocumentation(doc="Use blastn to remove reads that match at least one of the specified databases.")), ToolInput(tag="in_in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input BAM file.")), ToolInput(tag="in_ref_dbs", input_type=String(), position=1, doc=InputDocumentation(doc="One or more reference databases for blast.")), ToolInput(tag="in_output_bam_file", input_type=String(), position=2, doc=InputDocumentation(doc="Output BAM file with matching reads removed."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Filter_Py_Deplete_Blastn_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

