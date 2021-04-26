from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Meryl_Lookup_V0_1_0 = CommandToolBuilder(tool="meryl_lookup", base_command=["meryl-lookup"], inputs=[ToolInput(tag="in_sequence", input_type=Int(optional=True), prefix="-sequence", doc=InputDocumentation(doc="[<input2.fasta>] \")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="-output", doc=InputDocumentation(doc="<output1>      [<output2>] \")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc=":\nGenerate a BED format file showing the location of kmers in\nany input database on each sequence in 'input1.fasta'.")), ToolInput(tag="in_wig_count", input_type=Boolean(optional=True), prefix="-wig-count", doc=InputDocumentation(doc=":\nGenerate a WIGGLE format file showing the multiplicity of the\nkmer starting at each position in the sequence, if it exists in\nan input kmer database.")), ToolInput(tag="in_wig_depth", input_type=Boolean(optional=True), prefix="-wig-depth", doc=InputDocumentation(doc=":\nGenerate a WIGGLE format file showing the number of kmers in\nany input database that cover each position in the sequence.")), ToolInput(tag="in_existence", input_type=Boolean(optional=True), prefix="-existence", doc=InputDocumentation(doc=":\nGenerate a tab-delimited line for each input sequence with the\nnumber of kmers in the sequence, in the database and common to both.")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="-exclude", doc=InputDocumentation(doc=":\nCopy sequences from 'input1.fasta' (and 'input2.fasta') to the\ncorresponding output file if the sequence has at least one kmer\npresent (include) or no kmers present (exclude) in 'input1.meryl'.")), ToolInput(tag="in_report_type", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meryl:1.3--h1b792b2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meryl_Lookup_V0_1_0().translate("wdl")

