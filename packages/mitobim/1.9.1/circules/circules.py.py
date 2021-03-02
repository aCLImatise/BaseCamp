from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean, Float

Circules_Py_V0_1_0 = CommandToolBuilder(tool="circules.py", base_command=["circules.py"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="fasta file containing the sequence to be evaluate.")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="kmer size. single number (default = 31) or range (e.g.\n31-35).")), ToolInput(tag="in_km_er_step", input_type=Int(optional=True), prefix="--kmer_step", doc=InputDocumentation(doc="kmer step size (default = 2).")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="prefix for output files (default = 'circular').")), ToolInput(tag="in_intint__intintcoordinates", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="<INT,INT>, --extract_by_coordinates <INT,INT>\nCoordinates for clipping of sequence in format\n'startpos,endpos'. Clipped sequence will be written to\nfile 'prefix.circular.fasta'.")), ToolInput(tag="in_extract_by_length", input_type=Int(optional=True), prefix="--extract_by_length", doc=InputDocumentation(doc="expected length (in bp) of circular molecule. If a\ncandidate of length expected (+-length tolerance if\nspecified) is found, sequence will be clipped and\nwritten to file 'prefix.circular.fasta'.")), ToolInput(tag="in_length_tolerance_percent", input_type=Float(optional=True), prefix="--length_tolerance_percent", doc=InputDocumentation(doc="percent length tolerance (e.g. 0.1, for 10 %).\nCandidate fragments must have a length of 'expected\nlength +/- t * expected length'. Default = 0.")), ToolInput(tag="in_length_tolerance_absolute", input_type=Int(optional=True), prefix="--length_tolerance_absolute", doc=InputDocumentation(doc="absolute length tolerance (e.g. 1000). Candidate\nfragments must have a length of 'expected length +/-\ntolerance'. Default = 0.")), ToolInput(tag="in_new_start_roll", input_type=Int(optional=True), prefix="--newstart_roll", doc=InputDocumentation(doc="'roll' a putative ciruclar sequence to a specified new\nstart point. Sequence will be written to file\n'prefix.roll.{n}.fasta'."))], outputs=[], container="quay.io/biocontainers/mitobim:1.9.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circules_Py_V0_1_0().translate("wdl")

