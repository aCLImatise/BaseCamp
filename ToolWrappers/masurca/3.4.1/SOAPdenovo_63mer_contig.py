from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Soapdenovo_63Mer_Contig_V0_1_0 = CommandToolBuilder(tool="SOAPdenovo_63mer_contig", base_command=["SOAPdenovo-63mer", "contig"], inputs=[ToolInput(tag="in_prefix_input_graph", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="inputGraph: prefix of input graph file names")), ToolInput(tag="in_optional_resolve_repeats", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="(optional)    resolve repeats using information generated in pregraph step, works only if -R is set in pregraph step too, [NO]")), ToolInput(tag="in_mergelevelmin_max_strength", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]")), ToolInput(tag="in_edgecovcutoff_edges_shorter", input_type=Int(optional=True), prefix="-D", doc=InputDocumentation(doc="EdgeCovCutoff: edges shorter than (2*K+1) with coverage no larger than EdgeCovCutoff will be deleted, [1]")), ToolInput(tag="in_arcweight_two_edges", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="arcWeight: two edges, between which the arc's weight is larger than arcWeight, will be linerized, [0]")), ToolInput(tag="in_max_k_used", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="max k when using multi-kmer, and the parameters below are used along with multi-kmer, [NO]")), ToolInput(tag="in_readsinfofilethe_file_contains", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="readsInfoFile:The file contains information of solexa reads(It's necessary when using multi-kmer)")), ToolInput(tag="in_number_of_cpu", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="number of cpu, [8]")), ToolInput(tag="in_optional_merge_bubble", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="(optional)    merge clean bubble before iterate, works only if -M is set when using multi-kmer, [NO]")), ToolInput(tag="in_contig", input_type=String(), position=0, doc=InputDocumentation(doc="contig -g InputGraph [-R] [-M mergeLevel -D EdgeCovCutoff] [-s readsInfoFile -m maxkmer -p n_cpu -r]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soapdenovo_63Mer_Contig_V0_1_0().translate("wdl", allow_empty_container=True)

