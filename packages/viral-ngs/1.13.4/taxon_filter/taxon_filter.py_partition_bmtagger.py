from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean, Int

Taxon_Filter_Py_Partition_Bmtagger_V0_1_0 = CommandToolBuilder(tool="taxon_filter.py_partition_bmtagger", base_command=["taxon_filter.py", "partition_bmtagger"], inputs=[ToolInput(tag="in_out_match", input_type=String(optional=True), prefix="--outMatch", doc=InputDocumentation(doc="OUTMATCH\nFilenames for fastq output of matching reads.")), ToolInput(tag="in_out_no_match", input_type=String(optional=True), prefix="--outNoMatch", doc=InputDocumentation(doc="OUTNOMATCH\nFilenames for fastq output of unmatched reads.")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_tmp_dir", input_type=Directory(optional=True), prefix="--tmp_dir", doc=InputDocumentation(doc="Base directory for temp files. [default: /tmp]")), ToolInput(tag="in_tmp_dir_keep", input_type=Boolean(optional=True), prefix="--tmp_dirKeep", doc=InputDocumentation(doc="Keep the tmp_dir if an exception occurs while running.\nDefault is to delete all temp files at the end, even\nif there's a failure.\n")), ToolInput(tag="in_in_fast_q_one", input_type=Int(), position=0, doc=InputDocumentation(doc="Input fastq file; 1st end of paired-end reads.")), ToolInput(tag="in_in_fast_q_two", input_type=Int(), position=1, doc=InputDocumentation(doc="Input fastq file; 2nd end of paired-end reads. Must\nhave same names as inFastq1")), ToolInput(tag="in_ref_dbs", input_type=String(), position=2, doc=InputDocumentation(doc="Reference databases (one or more) to deplete from\ninput. For each db, requires prior creation of\ndb.bitmask by bmtool, and db.srprism.idx,\ndb.srprism.map, etc. by srprism mkindex."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxon_Filter_Py_Partition_Bmtagger_V0_1_0().translate("wdl", allow_empty_container=True)

