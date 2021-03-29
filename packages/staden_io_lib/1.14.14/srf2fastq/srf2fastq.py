from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Srf2Fastq_V0_1_0 = CommandToolBuilder(tool="srf2fastq", base_command=["srf2fastq"], inputs=[ToolInput(tag="in_use_calibrated_values", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Use calibrated quality values (CNF1)")), ToolInput(tag="in_ignore_bad_reads", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Ignore bad reads")), ToolInput(tag="in_split_fastq_files", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Split the fastq files, one for each region in the REGN chunk.\nThe files are named root_ + the name of the region.")), ToolInput(tag="in_sequentially_display_regions", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Sequentially display regions rather than append them into\none long read. (conflicts with -s)")), ToolInput(tag="in_ignore_regn_names", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Ignore REGN names: use region index.\ni.e. root_1, root_2 etc.")), ToolInput(tag="in_append_region_index", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Append region index to name\ni.e. name/1, name/2 etc.")), ToolInput(tag="in_include_explicit_sequence", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Include explicit sequence: the names of the regions of type 'E'")), ToolInput(tag="in_comma_separated_list", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc=",2.. In a comma separated list, specify which regions to reverse,\ncounting from 1. This will reverse complement the read and\nreverse the quality scores. (requires -s or -S)\n")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_archive_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srf2Fastq_V0_1_0().translate("wdl")

