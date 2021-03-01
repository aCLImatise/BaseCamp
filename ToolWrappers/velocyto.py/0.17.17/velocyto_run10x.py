from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Velocyto_Run10X_V0_1_0 = CommandToolBuilder(tool="velocyto_run10x", base_command=["velocyto", "run10x"], inputs=[ToolInput(tag="in_metadata_table", input_type=File(optional=True), prefix="--metadatatable", doc=InputDocumentation(doc="Table containing metadata of the various samples (csv fortmated rows are samples and cols are entries)")), ToolInput(tag="in_mask", input_type=File(optional=True), prefix="--mask", doc=InputDocumentation(doc=".gtf file containing intervals to mask")), ToolInput(tag="in_logic", input_type=String(optional=True), prefix="--logic", doc=InputDocumentation(doc="The logic to use for the filtering (default: Default)")), ToolInput(tag="in_multimap", input_type=Boolean(optional=True), prefix="--multimap", doc=InputDocumentation(doc="Consider not unique mappings (not reccomended)")), ToolInput(tag="in_sam_tools_threads", input_type=Int(optional=True), prefix="--samtools-threads", doc=InputDocumentation(doc="The number of threads to use to sort the bam by cellID file using samtools")), ToolInput(tag="in_sam_tools_memory", input_type=Int(optional=True), prefix="--samtools-memory", doc=InputDocumentation(doc="The number of MB used for every thread by samtools to sort the bam file")), ToolInput(tag="in_d_type", input_type=File(optional=True), prefix="--dtype", doc=InputDocumentation(doc="The dtype of the loom file layers - if more than 6000 molecules/reads per gene per cell are expected set uint32 to avoid truncation (default run_10x: uint16)")), ToolInput(tag="in_dump", input_type=Int(optional=True), prefix="--dump", doc=InputDocumentation(doc="For debugging purposes only: it will dump a molecular mapping report to hdf5. --dump N, saves a cell every N cells. If p is prepended a more complete (but huge) pickle report is printed (default: 0)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the vebosity level: -v (only warinings) -vv (warinings and info) -vvv (warinings, info and debug)")), ToolInput(tag="in_sample_folder", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gtf_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Velocyto_Run10X_V0_1_0().translate("wdl", allow_empty_container=True)

