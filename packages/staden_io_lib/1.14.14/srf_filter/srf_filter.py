from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Srf_Filter_V0_1_0 = CommandToolBuilder(tool="srf_filter", base_command=["srf_filter"], inputs=[ToolInput(tag="in_chunk_types_output", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Chunk types to output given as a comma delimited list of types.\nThe following types are allowed: 'ALL', 'BASE', 'CNF1', 'CNF4'\n'SAMP', 'SMP4'.\nThe default is 'ALL'.")), ToolInput(tag="in_sampsmp_mdata_types", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="SAMP/SMP4 mdata types to output given as a comma delimited list of types.\nThe following types are allowed: 'ALL', 'PROC', 'SLXI', 'SLXN'\n'0FAM', '1CY3', '2TXR', '3CY5'.\nThe default is 'ALL'.")), ToolInput(tag="in_filter_apply_match", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="The filter to apply to reads in the archive.  If reads match the\nfilter they are dumped.\nThe filter takes the form of <name>=<value>, where <name> can be\n'read', 'prefix', 'file'.\nIf the <name> is 'read' the value is represents the name of a\nread to dump.  Only the matching read will be dumped.\nIf the <name> is 'prefix' the value is represents the prefix of\nthe name of the reads to dump.  Only the matching reads will be\ndumped.\nIf the <name> is 'file' the value is a file name where any\nnumber of 'read' and 'prefix' name value pairs can be included,\none per line.\nThe default is no filter, which means all reads are dumped.")), ToolInput(tag="in_exclude_bad_reads", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="exclude bad reads using readsFlags bitmask in data block header.")), ToolInput(tag="in_use_option_add", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="use this option to add a Illumina-style REGN chunk.")), ToolInput(tag="in_print_verbose_messages", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print verbose messages.")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_7", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srf_Filter_V0_1_0().translate("wdl")

