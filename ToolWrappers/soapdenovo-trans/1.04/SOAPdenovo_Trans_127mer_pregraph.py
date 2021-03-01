from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Soapdenovo_Trans_127Mer_Pregraph_V0_1_0 = CommandToolBuilder(tool="SOAPdenovo_Trans_127mer_pregraph", base_command=["SOAPdenovo-Trans-127mer", "pregraph"], inputs=[ToolInput(tag="in_string_configfile_file", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<string>        configFile: the config file of reads")), ToolInput(tag="in_string_outputgraph_prefix", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<string>        outputGraph: prefix of output graph file name")), ToolInput(tag="in_int_kmermin_max", input_type=Boolean(optional=True), prefix="-K", doc=InputDocumentation(doc="<int>           kmer(min 13, max 127): kmer size, [23]")), ToolInput(tag="in_int_ncpu_number", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<int>           n_cpu: number of cpu for use, [8]")), ToolInput(tag="in_int_kmerfreqcutoff_kmers", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]"))], outputs=[ToolOutput(tag="out_string_outputgraph_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_string_outputgraph_prefix", type_hint=File()), doc=OutputDocumentation(doc="<string>        outputGraph: prefix of output graph file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soapdenovo_Trans_127Mer_Pregraph_V0_1_0().translate("wdl", allow_empty_container=True)

