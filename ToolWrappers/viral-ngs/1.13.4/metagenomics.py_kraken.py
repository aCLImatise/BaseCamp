from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, String, Directory, Boolean

Metagenomics_Py_Kraken_V0_1_0 = CommandToolBuilder(tool="metagenomics.py_kraken", base_command=["metagenomics.py", "kraken"], inputs=[ToolInput(tag="in_out_report", input_type=File(optional=True), prefix="--outReport", doc=InputDocumentation(doc="Kraken report output file.")), ToolInput(tag="in_out_reads", input_type=File(optional=True), prefix="--outReads", doc=InputDocumentation(doc="Kraken per read output file.")), ToolInput(tag="in_filter_threshold", input_type=Float(optional=True), prefix="--filterThreshold", doc=InputDocumentation(doc="Kraken filter threshold (default 0.05)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--numThreads", doc=InputDocumentation(doc="Number of threads to run. (default 1)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input unaligned reads, BAM format.")), ToolInput(tag="in_db", input_type=String(), position=1, doc=InputDocumentation(doc="Kraken database directory."))], outputs=[ToolOutput(tag="out_out_report", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_report", type_hint=File()), doc=OutputDocumentation(doc="Kraken report output file.")), ToolOutput(tag="out_out_reads", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_reads", type_hint=File()), doc=OutputDocumentation(doc="Kraken per read output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagenomics_Py_Kraken_V0_1_0().translate("wdl", allow_empty_container=True)

