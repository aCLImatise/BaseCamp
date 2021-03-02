from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Soapdenovo_63Mer_Pregraph_V0_1_0 = CommandToolBuilder(tool="SOAPdenovo_63mer_pregraph", base_command=["SOAPdenovo-63mer", "pregraph"], inputs=[ToolInput(tag="in_config_file_solexa", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="configFile: the config file of solexa reads")), ToolInput(tag="in_outputgraph_prefix_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="outputGraph: prefix of output graph file name")), ToolInput(tag="in_kmermin_max_size", input_type=Int(optional=True), prefix="-K", doc=InputDocumentation(doc="kmer(min 13, max 63): kmer size, [23]")), ToolInput(tag="in_ncpu_number_cpu", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="n_cpu: number of cpu for use, [8]")), ToolInput(tag="in_initmemoryassumption_memory_assumption", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="initMemoryAssumption: memory assumption initialized to avoid further reallocation, unit GB, [0]")), ToolInput(tag="in_optional_output_information", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="(optional)    output extra information for resolving repeats in contig step, [NO]")), ToolInput(tag="in_kmerfreqcutoff_kmers_larger", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="KmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]")), ToolInput(tag="in_pre_graph", input_type=String(), position=0, doc=InputDocumentation(doc="pregraph -s configFile -o outputGraph [-R] [-K kmer -p n_cpu -a initMemoryAssumption -d KmerFreqCutoff]"))], outputs=[ToolOutput(tag="out_outputgraph_prefix_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outputgraph_prefix_output", type_hint=File()), doc=OutputDocumentation(doc="outputGraph: prefix of output graph file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soapdenovo_63Mer_Pregraph_V0_1_0().translate("wdl", allow_empty_container=True)

