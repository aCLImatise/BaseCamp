from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hpc_Tanmask_V0_1_0 = CommandToolBuilder(tool="HPC.TANmask", base_command=["HPC.TANmask"], inputs=[ToolInput(tag="in_kmer_size_be", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc=": k-mer size (must be <= 32).")), ToolInput(tag="in_look_kmers_averlapping", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": Look for k-mers in averlapping bands of size 2^-w.")), ToolInput(tag="in_look_percent_similarity", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc=": Look for alignments with -e percent similarity.")), ToolInput(tag="in_look_alignments_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": Look for alignments of length >= -l.")), ToolInput(tag="in_use_s_trace", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": Use -s as the trace point spacing for encoding alignments.")), ToolInput(tag="in_use_t_threads", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc=": Use -T threads.")), ToolInput(tag="in_first_level_sort", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc=": Do first level sort and merge in directory -P.")), ToolInput(tag="in_use_name_tandem", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": use this name for the tandem mask track.")), ToolInput(tag="in_run_commands_script", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Run all commands in script in verbose mode.")), ToolInput(tag="in_place_script_bundles", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Place script bundles in separate files with prefix <name>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hpc_Tanmask_V0_1_0().translate("wdl", allow_empty_container=True)

