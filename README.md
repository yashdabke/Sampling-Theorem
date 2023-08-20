Sampling theorem:
The sampling theorem specifies the minimum-sampling rate at which a continuous-time signal needs to be uniformly sampled so that the original signal can be 
completely recovered or reconstructed by these samples alone. The sampling theorem essentially says that a signal has to be sampled at least with twice 
the frequency of the original signal. Since signals and their respective speed can be easier expressed by frequencies, most explanations of artifacts are 
based on their representation in the frequency domain. The sampling frequency required by the sampling theorem is called the Nyquist frequency. 

Reconstruction: 
The reconstruction process consists of replacing each sample by a sinc function, centred at the time of the sample and scaled by the sample value x(nT) 
times 2fc/ fs and adding all the functions so created (suppose the signal is sampled at exactly Nyquist rate fs= 2fm, then fm= fs/2 = fs-fm and Fm= 1/2 = 1-Fm)

1. Sampling Theorem: The sampling theorem specifies the minimum rate at which a continuous-time signal must be uniformly sampled so that the original signal can be perfectly reconstructed from these samples. This minimum rate is twice the frequency of the highest frequency component present in the original signal. This requirement ensures that no information is lost during the conversion from continuous to discrete.
2. Nyquist Frequency: The sampling frequency required by the sampling theorem is known as the Nyquist frequency. It's defined as half of the sampling rate needed to accurately capture the original signal. Sampling below the Nyquist frequency can result in aliasing, where higher-frequency components in the signal fold back into the frequency range captured by the sampled signal, leading to distortion.
3. Reconstruction Process: Reconstructing the original continuous signal from its discrete samples involves replacing each sample with a sinc function centered at the sample's time and scaled by the sample value. The sinc function helps in "smearing out" the effect of each sample over the continuous time domain.
4. Frequency Domain Representation: The concept of aliasing and artifacts introduced during undersampling or incorrect sampling rates can be more easily explained in the frequency domain. When a signal is undersampled, higher-frequency components can "wrap around" due to aliasing, distorting the reconstructed signal.
5. Nyquist Rate and Frequency: If the signal is sampled exactly at the Nyquist rate (twice the highest frequency component), the highest frequency in the signal (fm) is exactly half the sampling rate (fs). The frequency domain representation illustrates that the signal's spectrum is replicated at intervals of the sampling frequency, and the spectrum beyond fs/2 is mirrored back.

